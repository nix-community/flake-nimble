{
  description = ''mConnect Standardised Response Package'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-mcresponse-master.flake = false;
  inputs.src-mcresponse-master.type = "github";
  inputs.src-mcresponse-master.owner = "abbeymart";
  inputs.src-mcresponse-master.repo = "mcresponse-nim";
  inputs.src-mcresponse-master.ref = "refs/heads/master";
  inputs.src-mcresponse-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mcresponse-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mcresponse-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mcresponse-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}