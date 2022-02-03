{
  description = ''Erlang/Elixir NIFs for nim'';
  inputs.src-nimler-v4_5.flake = false;
  inputs.src-nimler-v4_5.type = "github";
  inputs.src-nimler-v4_5.owner = "wltsmrz";
  inputs.src-nimler-v4_5.repo = "nimler";
  inputs.src-nimler-v4_5.ref = "refs/tags/v4.5";
  
  outputs = { self, nixpkgs, src-nimler-v4_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-v4_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimler-v4_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}