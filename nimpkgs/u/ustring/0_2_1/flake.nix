{
  description = ''utf-8 string'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-ustring-0_2_1.flake = false;
  inputs.src-ustring-0_2_1.type = "github";
  inputs.src-ustring-0_2_1.owner = "rokups";
  inputs.src-ustring-0_2_1.repo = "nim-ustring";
  inputs.src-ustring-0_2_1.ref = "refs/tags/0.2.1";
  inputs.src-ustring-0_2_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ustring-0_2_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ustring-0_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ustring-0_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}