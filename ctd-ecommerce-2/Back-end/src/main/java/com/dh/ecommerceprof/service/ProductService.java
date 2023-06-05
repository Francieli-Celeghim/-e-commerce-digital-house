package com.dh.ecommerceprof.service;

import com.dh.ecommerceprof.dto.CategoryDto;
import com.dh.ecommerceprof.dto.ProductDto;
import com.dh.ecommerceprof.model.Categories;
import com.dh.ecommerceprof.model.Products;
import com.dh.ecommerceprof.repository.CategoryRepository;
import com.dh.ecommerceprof.repository.ProductRepository;
import com.dh.ecommerceprof.service.exceptions.BDExcecao;
import com.dh.ecommerceprof.service.exceptions.RecursoNaoEncontrado;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityNotFoundException;
import java.util.Optional;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Autowired
    private CategoryRepository categoryRepository;

    @Transactional(readOnly = true)
    public Page<ProductDto> findAllPage(PageRequest pageRequest) {
        Page<Products> list = productRepository.findAll(pageRequest);
        return list.map(x -> new ProductDto(x));
    }

    @Transactional(readOnly = true)
    public ProductDto findById(Integer id) {
        Optional<Products> obj = productRepository.findById(id);
        Products entity = obj.
                orElseThrow(() -> new RecursoNaoEncontrado("ENTIDADE NÃO ENCONTRADA"));
        return new ProductDto(entity, entity.getCategories());
    }

    @Transactional
    public ProductDto insert(ProductDto dto) {
        Products entity = new Products();
        copyToEntity(dto, entity);
        entity = productRepository.save(entity);
        return new ProductDto(entity);
    }

    @Transactional
    public ProductDto update(Integer id, ProductDto dto) {
        try {
            Products entity = productRepository.getById(id.intValue());
            copyToEntity(dto, entity);
            entity = productRepository.save(entity);
            return new ProductDto(entity);
        }
        catch (EntityNotFoundException e) {
            throw new RecursoNaoEncontrado("ID NÃO ENCONTRADO: " + id);
        }
    }

    public void delete(Integer id) {
        try {
            productRepository.deleteById(id);
        }
        catch (EmptyResultDataAccessException e) {
            throw new RecursoNaoEncontrado("ID NÃO ENCONTRADO: " + id);
        }
        catch (DataIntegrityViolationException e) {
            throw new BDExcecao("VIOLAÇÃO DE INTEGRIDADE");
        }
    }

    public void copyToEntity(ProductDto dto, Products entity) {
        entity.setTitle(dto.getTitle());
        entity.setDescription(dto.getDescription());
        entity.setPrice(dto.getPrice());
        entity.setImage(dto.getImage());

        entity.getCategories().clear();
        for(CategoryDto catDto : dto.getCategories()) {
            Categories categories = categoryRepository.getById(catDto.getId());
            entity.getCategories().add(categories);
        }
    }

}
