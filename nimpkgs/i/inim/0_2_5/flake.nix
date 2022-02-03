{
  description = ''Interactive Nim Shell'';
  inputs.src-inim-0_2_5.flake = false;
  inputs.src-inim-0_2_5.type = "github";
  inputs.src-inim-0_2_5.owner = "inim-repl";
  inputs.src-inim-0_2_5.repo = "INim";
  inputs.src-inim-0_2_5.ref = "refs/tags/0.2.5";
  
  outputs = { self, nixpkgs, src-inim-0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-inim-0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-inim-0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}