function App() {
  // Unused variable
  const unusedVariable = "I am not used";

  // Dummy function with duplicate code
  function duplicateFunction() {
    console.log("This is duplicate code");
  }

  function anotherDuplicateFunction() {
    console.log("This is duplicate code");
  }

  // Console.log statements, often flagged as code smells
  console.log("Testing SonarQube bugs");
  console.log("Another log statement");

  // Commented-out code
  // const commentedOutVariable = "This should not be here";

  if (true) {
    // Empty block
  }

  return (
    <div className="App" >
      <h2>This is my first docker image</h2>
      <p>Hi devi!!</p>
    </div>
  );
}

export default App;
