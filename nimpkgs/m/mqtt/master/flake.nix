{
  description = ''MQTT wrapper for nim'';
  inputs.src-mqtt-master.flake = false;
  inputs.src-mqtt-master.type = "github";
  inputs.src-mqtt-master.owner = "barnybug";
  inputs.src-mqtt-master.repo = "nim-mqtt";
  inputs.src-mqtt-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-mqtt-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mqtt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mqtt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}