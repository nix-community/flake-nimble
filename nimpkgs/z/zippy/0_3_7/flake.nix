{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_3_7.flake = false;
  inputs.src-zippy-0_3_7.type = "github";
  inputs.src-zippy-0_3_7.owner = "guzba";
  inputs.src-zippy-0_3_7.repo = "zippy";
  inputs.src-zippy-0_3_7.ref = "refs/tags/0.3.7";
  
  outputs = { self, nixpkgs, src-zippy-0_3_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_3_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_3_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}