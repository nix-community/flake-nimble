{
  description = ''Erlang/Elixir NIFs for nim'';
  inputs.src-nimler-v4_6.flake = false;
  inputs.src-nimler-v4_6.type = "github";
  inputs.src-nimler-v4_6.owner = "wltsmrz";
  inputs.src-nimler-v4_6.repo = "nimler";
  inputs.src-nimler-v4_6.ref = "refs/tags/v4.6";
  
  outputs = { self, nixpkgs, src-nimler-v4_6, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimler-v4_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimler-v4_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}