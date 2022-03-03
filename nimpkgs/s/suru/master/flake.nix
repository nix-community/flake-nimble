{
  description = ''A tqdm-style progress bar in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-suru-master.flake = false;
  inputs.src-suru-master.type = "github";
  inputs.src-suru-master.owner = "de-odex";
  inputs.src-suru-master.repo = "suru";
  inputs.src-suru-master.ref = "refs/heads/master";
  inputs.src-suru-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-suru-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-suru-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-suru-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}