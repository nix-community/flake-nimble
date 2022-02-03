{
  description = ''Native MQTT client library'';
  inputs.src-nmqtt-0_1_0.flake = false;
  inputs.src-nmqtt-0_1_0.type = "github";
  inputs.src-nmqtt-0_1_0.owner = "zevv";
  inputs.src-nmqtt-0_1_0.repo = "nmqtt";
  inputs.src-nmqtt-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-nmqtt-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nmqtt-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nmqtt-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}