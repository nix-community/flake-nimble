{
  description = ''Bindings for Simple and Fast Multimedia Library (through CSFML)'';
  inputs.src-csfml-v2_3_1.flake = false;
  inputs.src-csfml-v2_3_1.type = "github";
  inputs.src-csfml-v2_3_1.owner = "oprypin";
  inputs.src-csfml-v2_3_1.repo = "nim-csfml";
  inputs.src-csfml-v2_3_1.ref = "refs/tags/v2.3.1";
  
  outputs = { self, nixpkgs, src-csfml-v2_3_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csfml-v2_3_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csfml-v2_3_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}