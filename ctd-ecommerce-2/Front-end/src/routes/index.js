import { BrowserRouter, Routes, Route } from "react-router-dom";
import Header from '../components/Header';
import Home from '../pages/Home';
import About from '../pages/About';
import Footer from '../components/Footer';

const Paginas = () => {
  return(
       <BrowserRouter>        
          <Header />
            <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/sobrenos" element ={<About />} />
                           
      </Routes>
      <Footer/>
       </BrowserRouter>
   )
    
};

export default Paginas;

