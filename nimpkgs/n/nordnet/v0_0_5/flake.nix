{
  description = ''Scraping API for www.nordnet.dk ready to integrate with Home Assistant (Hassio)'';
  inputs.src-nordnet-v0_0_5.flake = false;
  inputs.src-nordnet-v0_0_5.type = "github";
  inputs.src-nordnet-v0_0_5.owner = "ThomasTJdev";
  inputs.src-nordnet-v0_0_5.repo = "nim_nordnet_api";
  inputs.src-nordnet-v0_0_5.ref = "refs/tags/v0.0.5";
  
  
  inputs."nmqtt".type = "github";
  inputs."nmqtt".owner = "riinr";
  inputs."nmqtt".repo = "flake-nimble";
  inputs."nmqtt".ref = "flake-pinning";
  inputs."nmqtt".dir = "nimpkgs/n/nmqtt";

  
  inputs."q".type = "github";
  inputs."q".owner = "riinr";
  inputs."q".repo = "flake-nimble";
  inputs."q".ref = "flake-pinning";
  inputs."q".dir = "nimpkgs/q/q";

  outputs = { self, nixpkgs, src-nordnet-v0_0_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nordnet-v0_0_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nordnet-v0_0_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}