{
  description = ''Library for querying HTML using CSS-selectors, like JavaScripts document.querySelector'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimquery-v1_2_3.flake = false;
  inputs.src-nimquery-v1_2_3.type = "github";
  inputs.src-nimquery-v1_2_3.owner = "GULPF";
  inputs.src-nimquery-v1_2_3.repo = "nimquery";
  inputs.src-nimquery-v1_2_3.ref = "refs/tags/v1.2.3";
  inputs.src-nimquery-v1_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimquery-v1_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimquery-v1_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimquery-v1_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}