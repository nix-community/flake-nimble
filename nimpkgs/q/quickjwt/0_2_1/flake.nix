{
  description = ''JSON Web Tokens for Nim'';
  inputs.src-quickjwt-0_2_1.flake = false;
  inputs.src-quickjwt-0_2_1.type = "github";
  inputs.src-quickjwt-0_2_1.owner = "treeform";
  inputs.src-quickjwt-0_2_1.repo = "quickjwt";
  inputs.src-quickjwt-0_2_1.ref = "refs/tags/0.2.1";
  
  outputs = { self, nixpkgs, src-quickjwt-0_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-quickjwt-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-quickjwt-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}