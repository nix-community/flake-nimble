{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_3_11.flake = false;
  inputs.src-zippy-0_3_11.type = "github";
  inputs.src-zippy-0_3_11.owner = "guzba";
  inputs.src-zippy-0_3_11.repo = "zippy";
  inputs.src-zippy-0_3_11.ref = "refs/tags/0.3.11";
  
  outputs = { self, nixpkgs, src-zippy-0_3_11, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_3_11;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_3_11"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}