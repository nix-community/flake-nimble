{
  description = ''Scraping API for www.nordnet.dk ready to integrate with Home Assistant (Hassio)'';
  inputs.src-nordnet-master.flake = false;
  inputs.src-nordnet-master.type = "github";
  inputs.src-nordnet-master.owner = "ThomasTJdev";
  inputs.src-nordnet-master.repo = "nim_nordnet_api";
  inputs.src-nordnet-master.ref = "refs/heads/master";
  
  
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

  outputs = { self, nixpkgs, src-nordnet-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nordnet-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nordnet-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}