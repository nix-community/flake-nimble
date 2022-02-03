{
  description = ''making Nim development easier in the command-line'';
  inputs.src-rodcli-v0_1_8.flake = false;
  inputs.src-rodcli-v0_1_8.type = "github";
  inputs.src-rodcli-v0_1_8.owner = "jabbalaci";
  inputs.src-rodcli-v0_1_8.repo = "NimCliHelper";
  inputs.src-rodcli-v0_1_8.ref = "refs/tags/v0.1.8";
  
  outputs = { self, nixpkgs, src-rodcli-v0_1_8, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodcli-v0_1_8;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rodcli-v0_1_8"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}