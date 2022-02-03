{
  description = ''wrapper for communicating with InfluxDB over the REST interface'';
  inputs.src-influx-master.flake = false;
  inputs.src-influx-master.type = "github";
  inputs.src-influx-master.owner = "samdmarshall";
  inputs.src-influx-master.repo = "influx.nim";
  inputs.src-influx-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-influx-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-influx-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-influx-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}