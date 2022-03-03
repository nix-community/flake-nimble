{
  description = ''Proton template engine for xml and xhtml files'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-proton-master.flake = false;
  inputs.src-proton-master.type = "github";
  inputs.src-proton-master.owner = "jasonrbriggs";
  inputs.src-proton-master.repo = "proton-nim";
  inputs.src-proton-master.ref = "refs/heads/master";
  inputs.src-proton-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-proton-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-proton-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-proton-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}