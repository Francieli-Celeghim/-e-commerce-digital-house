import { Card, Row, Col } from 'react-bootstrap';
import { BsGithub } from 'react-icons/bs';
import './style.scss'


const Footer = () => {

    const generateDateString = () => {
        const creationYear = '2022';
        const currentYear = `${new Date().getFullYear()}`;
        return creationYear === currentYear ? currentYear : `${creationYear} - ${currentYear}`;
    }

    return (
        <footer id="footer">

            <Card >
                <Card.Body>
                    <Row>
                        <Col md={{span:4}} sm={{span:3}}>
                            <Card.Text></Card.Text>
                        </Col>
                        <Col md={{span:4}} sm={{span:6}}>
                            <Card.Text className="text-center">
                                <a href="https://github.com/BuenoDark/projeto-integrador.git" target="_blank"><BsGithub /></a>
                            </Card.Text>
                        </Col>
                        <Col md={{span:2, offset:2}} sm={{span:3}}>
                            <Card.Text className="text-right" >
                               <a href="/sobreNos"> Central de Atendimento </a>
                            </Card.Text>
                        </Col>
                        
                    </Row>
                    

                </Card.Body>
                <Card.Footer className="text-center"> desenvolvido por: group4  {generateDateString()} - CDT</Card.Footer>
            </Card>

        </footer>
    )
}
export default Footer;