{
  description = ''Pure Nim implementation of deflate, zlib, gzip and zip.'';
  inputs.src-zippy-0_6_2.flake = false;
  inputs.src-zippy-0_6_2.type = "github";
  inputs.src-zippy-0_6_2.owner = "guzba";
  inputs.src-zippy-0_6_2.repo = "zippy";
  inputs.src-zippy-0_6_2.ref = "refs/tags/0.6.2";
  
  outputs = { self, nixpkgs, src-zippy-0_6_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zippy-0_6_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zippy-0_6_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}