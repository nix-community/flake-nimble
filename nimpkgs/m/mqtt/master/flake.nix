{
  description = ''MQTT wrapper for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mqtt-master.flake = false;
  inputs.src-mqtt-master.type = "github";
  inputs.src-mqtt-master.owner = "barnybug";
  inputs.src-mqtt-master.repo = "nim-mqtt";
  inputs.src-mqtt-master.ref = "refs/heads/master";
  inputs.src-mqtt-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mqtt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mqtt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mqtt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}