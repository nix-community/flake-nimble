{
  description = ''wrapper for communicating with InfluxDB over the REST interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-influx-master.flake = false;
  inputs.src-influx-master.type = "github";
  inputs.src-influx-master.owner = "samdmarshall";
  inputs.src-influx-master.repo = "influx.nim";
  inputs.src-influx-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-influx-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-influx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-influx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}