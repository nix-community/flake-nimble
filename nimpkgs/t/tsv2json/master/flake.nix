{
  description = ''Turn TSV file or stream into JSON file or stream'';
  inputs.src-tsv2json-master.flake = false;
  inputs.src-tsv2json-master.type = "github";
  inputs.src-tsv2json-master.owner = "hectormonacci";
  inputs.src-tsv2json-master.repo = "tsv2json";
  inputs.src-tsv2json-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tsv2json-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tsv2json-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tsv2json-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}