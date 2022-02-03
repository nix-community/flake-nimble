{
  description = ''Native MQTT client library'';
  inputs.src-nmqtt-v1_0_4.flake = false;
  inputs.src-nmqtt-v1_0_4.type = "github";
  inputs.src-nmqtt-v1_0_4.owner = "zevv";
  inputs.src-nmqtt-v1_0_4.repo = "nmqtt";
  inputs.src-nmqtt-v1_0_4.ref = "refs/tags/v1.0.4";
  
  
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

  outputs = { self, nixpkgs, src-nmqtt-v1_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmqtt-v1_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nmqtt-v1_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}