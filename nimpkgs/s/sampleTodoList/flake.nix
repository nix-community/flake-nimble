{
  description = ''Sample Todo List Application'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."sampleTodoList-master".type = "github";
  inputs."sampleTodoList-master".owner = "riinr";
  inputs."sampleTodoList-master".repo = "flake-nimble";
  inputs."sampleTodoList-master".ref = "flake-pinning";
  inputs."sampleTodoList-master".dir = "nimpkgs/s/sampleTodoList/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}