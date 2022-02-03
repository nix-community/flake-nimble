{
  description = ''Native MQTT client library'';
  inputs.src-nmqtt-master.flake = false;
  inputs.src-nmqtt-master.type = "github";
  inputs.src-nmqtt-master.owner = "zevv";
  inputs.src-nmqtt-master.repo = "nmqtt";
  inputs.src-nmqtt-master.ref = "refs/heads/master";
  
  
  inputs."cligen".url = "path:../../../c/cligen";
  inputs."cligen".type = "github";
  inputs."cligen".owner = "riinr";
  inputs."cligen".repo = "flake-nimble";
  inputs."cligen".ref = "flake-pinning";
  inputs."cligen".dir = "nimpkgs/c/cligen";

  
  inputs."bcrypt".url = "path:../../../b/bcrypt";
  inputs."bcrypt".type = "github";
  inputs."bcrypt".owner = "riinr";
  inputs."bcrypt".repo = "flake-nimble";
  inputs."bcrypt".ref = "flake-pinning";
  inputs."bcrypt".dir = "nimpkgs/b/bcrypt";

  outputs = { self, nixpkgs, src-nmqtt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmqtt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nmqtt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}