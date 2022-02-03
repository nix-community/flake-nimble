{
  description = ''tools for handling CSV files (comma or tab-separated) with an API similar to Python's CSVDictReader and -Writer.'';
  inputs.src-csvtable-master.flake = false;
  inputs.src-csvtable-master.type = "github";
  inputs.src-csvtable-master.owner = "apahl";
  inputs.src-csvtable-master.repo = "csvtable";
  inputs.src-csvtable-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-csvtable-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-csvtable-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-csvtable-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}