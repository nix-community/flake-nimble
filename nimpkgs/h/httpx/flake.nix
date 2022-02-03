{
  description = ''A super-fast epoll-backed and parallel HTTP server.'';
  inputs."httpx-master".url = "path:./master";
  inputs."httpx-v0_1_0".url = "path:./v0_1_0";
  inputs."httpx-v0_1_2".url = "path:./v0_1_2";
  inputs."httpx-v0_1_4".url = "path:./v0_1_4";
  inputs."httpx-v0_1_6".url = "path:./v0_1_6";
  inputs."httpx-v0_1_8".url = "path:./v0_1_8";
  inputs."httpx-v0_2_0".url = "path:./v0_2_0";
  inputs."httpx-v0_2_2".url = "path:./v0_2_2";
  inputs."httpx-v0_2_4".url = "path:./v0_2_4";
  inputs."httpx-v0_2_6".url = "path:./v0_2_6";
  inputs."httpx-v0_2_8".url = "path:./v0_2_8";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}