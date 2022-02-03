{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_7_0.flake = false;
  inputs.src-zippy-0_7_0.type = "github";
  inputs.src-zippy-0_7_0.owner = "guzba";
  inputs.src-zippy-0_7_0.repo = "zippy";
  inputs.src-zippy-0_7_0.ref = "refs/tags/0.7.0";
  
  outputs = { self, nixpkgs, src-zippy-0_7_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_7_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_7_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}