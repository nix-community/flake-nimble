{
  description = ''JSON Web Tokens for Nim'';
  inputs.src-quickjwt-0_0_1.flake = false;
  inputs.src-quickjwt-0_0_1.type = "github";
  inputs.src-quickjwt-0_0_1.owner = "treeform";
  inputs.src-quickjwt-0_0_1.repo = "quickjwt";
  inputs.src-quickjwt-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, src-quickjwt-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-quickjwt-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-quickjwt-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}