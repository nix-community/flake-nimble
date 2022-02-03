{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_5_12.flake = false;
  inputs.src-zippy-0_5_12.type = "github";
  inputs.src-zippy-0_5_12.owner = "guzba";
  inputs.src-zippy-0_5_12.repo = "zippy";
  inputs.src-zippy-0_5_12.ref = "refs/tags/0.5.12";
  
  outputs = { self, nixpkgs, src-zippy-0_5_12, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_5_12;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_5_12"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}