{
  description = ''Library for querying HTML using CSS-selectors, like JavaScripts document.querySelector'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimquery-v1_2_2.flake = false;
  inputs.src-nimquery-v1_2_2.type = "github";
  inputs.src-nimquery-v1_2_2.owner = "GULPF";
  inputs.src-nimquery-v1_2_2.repo = "nimquery";
  inputs.src-nimquery-v1_2_2.ref = "refs/tags/v1.2.2";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimquery-v1_2_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimquery-v1_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimquery-v1_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}