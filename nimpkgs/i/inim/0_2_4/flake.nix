{
  description = ''Interactive Nim Shell'';
  inputs.src-inim-0_2_4.flake = false;
  inputs.src-inim-0_2_4.type = "github";
  inputs.src-inim-0_2_4.owner = "inim-repl";
  inputs.src-inim-0_2_4.repo = "INim";
  inputs.src-inim-0_2_4.ref = "refs/tags/0.2.4";
  
  outputs = { self, nixpkgs, src-inim-0_2_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-0_2_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-inim-0_2_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}