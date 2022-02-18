{
  description = ''Redux Implementation in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-redux_nim-v1_0_2.flake = false;
  inputs.src-redux_nim-v1_0_2.type = "github";
  inputs.src-redux_nim-v1_0_2.owner = "M4RC3L05";
  inputs.src-redux_nim-v1_0_2.repo = "redux-nim";
  inputs.src-redux_nim-v1_0_2.ref = "refs/tags/v1.0.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-redux_nim-v1_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-redux_nim-v1_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-redux_nim-v1_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}