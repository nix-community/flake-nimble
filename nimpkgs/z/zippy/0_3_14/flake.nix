{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_3_14.flake = false;
  inputs.src-zippy-0_3_14.type = "github";
  inputs.src-zippy-0_3_14.owner = "guzba";
  inputs.src-zippy-0_3_14.repo = "zippy";
  inputs.src-zippy-0_3_14.ref = "refs/tags/0.3.14";
  
  outputs = { self, nixpkgs, src-zippy-0_3_14, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_3_14;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_3_14"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}