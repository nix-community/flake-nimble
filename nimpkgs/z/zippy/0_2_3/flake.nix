{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_2_3.flake = false;
  inputs.src-zippy-0_2_3.type = "github";
  inputs.src-zippy-0_2_3.owner = "guzba";
  inputs.src-zippy-0_2_3.repo = "zippy";
  inputs.src-zippy-0_2_3.ref = "refs/tags/0.2.3";
  
  outputs = { self, nixpkgs, src-zippy-0_2_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}