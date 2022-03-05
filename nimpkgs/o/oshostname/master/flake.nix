{
  description = ''Get the current hostname with gethostname(2)'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-oshostname-master.flake = false;
  inputs.src-oshostname-master.type = "github";
  inputs.src-oshostname-master.owner = "jrfondren";
  inputs.src-oshostname-master.repo = "nim-oshostname";
  inputs.src-oshostname-master.ref = "refs/heads/master";
  inputs.src-oshostname-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-oshostname-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-oshostname-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-oshostname-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}