{
  description = ''Parse fixed-width fields within lines of text (complementary to parsecsv)'';
  inputs.src-parsefixed-master.flake = false;
  inputs.src-parsefixed-master.type = "github";
  inputs.src-parsefixed-master.owner = "jlp765";
  inputs.src-parsefixed-master.repo = "parsefixed";
  inputs.src-parsefixed-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-parseFixed-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parseFixed-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-parseFixed-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}