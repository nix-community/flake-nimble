{
  description = ''Erlang/Elixir NIFs for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-nimler-v4_6.flake = false;
  inputs.src-nimler-v4_6.type = "github";
  inputs.src-nimler-v4_6.owner = "wltsmrz";
  inputs.src-nimler-v4_6.repo = "nimler";
  inputs.src-nimler-v4_6.ref = "refs/tags/v4.6";
  inputs.src-nimler-v4_6.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimler-v4_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-v4_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimler-v4_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}