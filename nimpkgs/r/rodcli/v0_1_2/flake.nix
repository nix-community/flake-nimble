{
  description = ''making Nim development easier in the command-line'';
  inputs.src-rodcli-v0_1_2.flake = false;
  inputs.src-rodcli-v0_1_2.type = "github";
  inputs.src-rodcli-v0_1_2.owner = "jabbalaci";
  inputs.src-rodcli-v0_1_2.repo = "NimCliHelper";
  inputs.src-rodcli-v0_1_2.ref = "refs/tags/v0.1.2";
  
  outputs = { self, nixpkgs, src-rodcli-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-rodcli-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-rodcli-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}