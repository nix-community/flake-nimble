{
  description = ''utf-8 string'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ustring-0_2_3.flake = false;
  inputs.src-ustring-0_2_3.type = "github";
  inputs.src-ustring-0_2_3.owner = "rokups";
  inputs.src-ustring-0_2_3.repo = "nim-ustring";
  inputs.src-ustring-0_2_3.ref = "refs/tags/0.2.3";
  inputs.src-ustring-0_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ustring-0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ustring-0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ustring-0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}