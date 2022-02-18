{
  description = ''paramidi with nimib'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-paramidib-main.flake = false;
  inputs.src-paramidib-main.type = "github";
  inputs.src-paramidib-main.owner = "pietroppeter";
  inputs.src-paramidib-main.repo = "paramidib";
  inputs.src-paramidib-main.ref = "refs/heads/main";
  
  
  inputs."paramidi".type = "github";
  inputs."paramidi".owner = "riinr";
  inputs."paramidi".repo = "flake-nimble";
  inputs."paramidi".ref = "flake-pinning";
  inputs."paramidi".dir = "nimpkgs/p/paramidi";

  
  inputs."paramidi_soundfonts".type = "github";
  inputs."paramidi_soundfonts".owner = "riinr";
  inputs."paramidi_soundfonts".repo = "flake-nimble";
  inputs."paramidi_soundfonts".ref = "flake-pinning";
  inputs."paramidi_soundfonts".dir = "nimpkgs/p/paramidi_soundfonts";

  
  inputs."parasound".type = "github";
  inputs."parasound".owner = "riinr";
  inputs."parasound".repo = "flake-nimble";
  inputs."parasound".ref = "flake-pinning";
  inputs."parasound".dir = "nimpkgs/p/parasound";

  outputs = { self, nixpkgs, flakeNimbleLib, src-paramidib-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-paramidib-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-paramidib-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}