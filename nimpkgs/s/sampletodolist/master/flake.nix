{
  description = ''Sample Todo List Application'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-sampleTodoList-master.flake = false;
  inputs.src-sampleTodoList-master.type = "github";
  inputs.src-sampleTodoList-master.owner = "momeemt";
  inputs.src-sampleTodoList-master.repo = "SampleTodoList";
  inputs.src-sampleTodoList-master.ref = "refs/heads/master";
  
  
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, flakeNimbleLib, src-sampleTodoList-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sampleTodoList-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-sampleTodoList-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}