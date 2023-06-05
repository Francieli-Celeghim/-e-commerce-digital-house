import {Carousel, Row, Col} from 'react-bootstrap';

import './style.scss';


const Carrossel = () =>{

  

  return (
    
      <section id="carrossel">
        <h2>Ofertas do dia</h2>
          <Carousel variant="dark" id= "destaques">
        <Carousel.Item>
        <Row >
            <img
              className="d-block w-100"
              src="moveis"
              alt="Moveis"
              />
                <Carousel.Caption>
                <h3>Móveis</h3>
                <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
            </Carousel.Caption>
            </Row>
                </Carousel.Item>
                <Carousel.Item>
                <img
                className="d-block w-100"
                src="construcao"
                alt="Construção"
                />

                <Carousel.Caption>
                <h3>Parafusadeira</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </Carousel.Caption>
                </Carousel.Item>
                <Carousel.Item>
                <img
                className="d-block w-100"
                src="eletronicos"
                alt="Eletronicos"
                />

                <Carousel.Caption>
                <h3>Celulares</h3>
                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                </Carousel.Caption>
            </Carousel.Item>
          </Carousel>

      </section>    
    
  )
}     
export default Carrossel;

