{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_5_8.flake = false;
  inputs.src-zippy-0_5_8.type = "github";
  inputs.src-zippy-0_5_8.owner = "guzba";
  inputs.src-zippy-0_5_8.repo = "zippy";
  inputs.src-zippy-0_5_8.ref = "refs/tags/0.5.8";
  
  outputs = { self, nixpkgs, src-zippy-0_5_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_5_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_5_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}