{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_2_5.flake = false;
  inputs.src-zippy-0_2_5.type = "github";
  inputs.src-zippy-0_2_5.owner = "guzba";
  inputs.src-zippy-0_2_5.repo = "zippy";
  inputs.src-zippy-0_2_5.ref = "refs/tags/0.2.5";
  
  outputs = { self, nixpkgs, src-zippy-0_2_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_2_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_2_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}