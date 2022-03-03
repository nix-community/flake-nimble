{
  description = ''wrapper for communicating with InfluxDB over the REST interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-influx-master.flake = false;
  inputs.src-influx-master.type = "github";
  inputs.src-influx-master.owner = "samdmarshall";
  inputs.src-influx-master.repo = "influx.nim";
  inputs.src-influx-master.ref = "refs/heads/master";
  inputs.src-influx-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-influx-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-influx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-influx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}