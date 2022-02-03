{
  description = ''Scraping API for www.nordnet.dk ready to integrate with Home Assistant (Hassio)'';
  inputs.src-nordnet-v0_0_2.flake = false;
  inputs.src-nordnet-v0_0_2.type = "github";
  inputs.src-nordnet-v0_0_2.owner = "ThomasTJdev";
  inputs.src-nordnet-v0_0_2.repo = "nim_nordnet_api";
  inputs.src-nordnet-v0_0_2.ref = "refs/tags/v0.0.2";
  
  
  inputs."nmqtt".url = "path:../../../n/nmqtt";
  inputs."nmqtt".type = "github";
  inputs."nmqtt".owner = "riinr";
  inputs."nmqtt".repo = "flake-nimble";
  inputs."nmqtt".ref = "flake-pinning";
  inputs."nmqtt".dir = "nimpkgs/n/nmqtt";

  
  inputs."q".url = "path:../../../q/q";
  inputs."q".type = "github";
  inputs."q".owner = "riinr";
  inputs."q".repo = "flake-nimble";
  inputs."q".ref = "flake-pinning";
  inputs."q".dir = "nimpkgs/q/q";

  outputs = { self, nixpkgs, src-nordnet-v0_0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nordnet-v0_0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nordnet-v0_0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}