{
  description = ''macro-based HTML templating engine'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-emerald-v0_2_3.flake = false;
  inputs.src-emerald-v0_2_3.type = "github";
  inputs.src-emerald-v0_2_3.owner = "flyx";
  inputs.src-emerald-v0_2_3.repo = "emerald";
  inputs.src-emerald-v0_2_3.ref = "refs/tags/v0.2.3";
  inputs.src-emerald-v0_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-emerald-v0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-emerald-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-emerald-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}