{
  description = ''Interactive Nim Shell'';
  inputs.src-inim-0_1_1.flake = false;
  inputs.src-inim-0_1_1.type = "github";
  inputs.src-inim-0_1_1.owner = "inim-repl";
  inputs.src-inim-0_1_1.repo = "INim";
  inputs.src-inim-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-inim-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-inim-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}