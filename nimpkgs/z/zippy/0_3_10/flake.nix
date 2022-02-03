{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_3_10.flake = false;
  inputs.src-zippy-0_3_10.type = "github";
  inputs.src-zippy-0_3_10.owner = "guzba";
  inputs.src-zippy-0_3_10.repo = "zippy";
  inputs.src-zippy-0_3_10.ref = "refs/tags/0.3.10";
  
  outputs = { self, nixpkgs, src-zippy-0_3_10, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_3_10;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_3_10"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}