{
  description = ''API for www.eloverblik.dk'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-eloverblik-v0_0_2.flake = false;
  inputs.src-eloverblik-v0_0_2.type = "github";
  inputs.src-eloverblik-v0_0_2.owner = "ThomasTJdev";
  inputs.src-eloverblik-v0_0_2.repo = "nim_eloverblik_api";
  inputs.src-eloverblik-v0_0_2.ref = "refs/tags/v0.0.2";
  
  
  inputs."nmqtt".type = "github";
  inputs."nmqtt".owner = "riinr";
  inputs."nmqtt".repo = "flake-nimble";
  inputs."nmqtt".ref = "flake-pinning";
  inputs."nmqtt".dir = "nimpkgs/n/nmqtt";

  outputs = { self, nixpkgs, flakeNimbleLib, src-eloverblik-v0_0_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eloverblik-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-eloverblik-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}