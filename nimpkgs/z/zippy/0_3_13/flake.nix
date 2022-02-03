{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_3_13.flake = false;
  inputs.src-zippy-0_3_13.type = "github";
  inputs.src-zippy-0_3_13.owner = "guzba";
  inputs.src-zippy-0_3_13.repo = "zippy";
  inputs.src-zippy-0_3_13.ref = "refs/tags/0.3.13";
  
  outputs = { self, nixpkgs, src-zippy-0_3_13, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_3_13;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_3_13"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}