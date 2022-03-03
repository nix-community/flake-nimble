{
  description = ''Erlang/Elixir NIFs for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimler-v3_0.flake = false;
  inputs.src-nimler-v3_0.type = "github";
  inputs.src-nimler-v3_0.owner = "wltsmrz";
  inputs.src-nimler-v3_0.repo = "nimler";
  inputs.src-nimler-v3_0.ref = "refs/tags/v3.0";
  inputs.src-nimler-v3_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimler-v3_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-v3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimler-v3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}