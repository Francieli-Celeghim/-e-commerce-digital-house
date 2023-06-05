
import { Nav, NavDropdown, Container, Navbar } from "react-bootstrap";
import { Link } from "react-router-dom";
import CartIcon from "./CartIcon";
import logodeuno from '../../assets/logodeuno.png';
import "./style.scss";
const Header = () => {
    return (

  
      <section id="header">
            <Navbar expand="lg">
                <Container id="home">
                    <Navbar.Brand className="nav-brand">
                        <a href="/">                        
                            <img src={logodeuno} alt="" width={60}/>
                        </a>
                    </Navbar.Brand> 
                    <Navbar.Collapse className="menu">
                        <Nav className="items">
                            <Nav.Link as={Link} to={"/"}>
                            Home
                            </Nav.Link> 

                            <Nav.Link as={Link} to={"/produtos"}>
                            Produtos
                            </Nav.Link>
                            <NavDropdown title="Categorias" className="basic-nav-dropdown">
                                <NavDropdown.Item as={Link} to={"/categoria/eletronicos"} >
                                Eletronicos
                                </NavDropdown.Item>
                                <NavDropdown.Item as={Link} to={"/categoria/eletrodomesticos"}>
                                Eletrodomesticos
                                </NavDropdown.Item>
                                <NavDropdown.Item as={Link} to={"/categoria/ferramentas"}>
                                Ferramentas
                                </NavDropdown.Item>
                                <NavDropdown.Item as={Link} to={"/categoria/construcao"}>
                                Construção
                                </NavDropdown.Item>
                                <NavDropdown.Item as={Link} to={"/categoria/moveis"}>
                                Moveis
                                </NavDropdown.Item>
                            </NavDropdown>
                            <Nav.Link style={{ whiteSpace: "nowrap" }} as={Link} to={"/sobreNos"}>
                                Sobre nós
                            </Nav.Link>
                            <Nav.Link href="#footer">Central de Atendimento</Nav.Link>
                            <Nav.Link className="car" as={Link} to={"/carrinho"}>
                            <CartIcon /> 
                            </Nav.Link>
                        </Nav>
                    </Navbar.Collapse>    
                </Container>
            </Navbar>
        </section>
    );
};

export default Header;