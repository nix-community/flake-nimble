{
  description = ''Command to add counter suffix/prefix to a list of files.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-number_files-master.flake = false;
  inputs.src-number_files-master.type = "github";
  inputs.src-number_files-master.owner = "Araq";
  inputs.src-number_files-master.repo = "number_files";
  inputs.src-number_files-master.ref = "refs/heads/master";
  inputs.src-number_files-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-number_files-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-number_files-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-number_files-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}