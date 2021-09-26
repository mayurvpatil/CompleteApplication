import { useState } from 'react';
import './App.css';
import axios from 'axios';

function App() {

  const [data, setData] = useState('');

  function click() {
    axios.get("http://localhost:5001/", {})
      .then((response) => {
        var today = new Date();
        var str = today.getDate() + '/' + (today.getMonth() + 1) + '/' + today.getFullYear() + " " + today.getHours() + ":" + today.getMinutes()
        setData(str + " " + response.data);
      })
      .catch((err) => {
        console.error(err);
      });
  }

  return (
    <div className="App">
      <header className="App-header">
        <button onClick={click}> Refresh </button>
        <br />

        {
          data && <h3> {data}</h3>
        }

      </header>
    </div>
  );



}

export default App;
