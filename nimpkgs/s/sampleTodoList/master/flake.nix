{
  description = ''Sample Todo List Application'';
  inputs.src-sampleTodoList-master.flake = false;
  inputs.src-sampleTodoList-master.type = "github";
  inputs.src-sampleTodoList-master.owner = "momeemt";
  inputs.src-sampleTodoList-master.repo = "SampleTodoList";
  inputs.src-sampleTodoList-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  outputs = { self, nixpkgs, src-sampleTodoList-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sampleTodoList-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sampleTodoList-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}