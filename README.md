
# 2018年1月19日
**肖威工作总结**
- 懂你时间
- dongnishijian.com
- 懂你时间网页端+微信端+移动端开发；

做一个刚需市场的产品非常重要，前提是具备了技术实力作为基础，不然难以完成想法到产品的打造；

# 2018年1月20日
**肖威工作总结**
产品销售分配是一家公司存在的关键；
我们的产品需要满足什么需求？我们产品针对于什么用户？我们应该如何销售我们的产品？
为什么我们的教育不可以培养领导者，其中的关键就在于我们的教育没有让有结果的人来教学；
完成正确的思想和技能的传递，完成产品打造的方法的传递，而仅仅是传授了所谓的知识；

**真正有价值的其实是一个人的人生的经验**
**（1）时间线：我过去干过什么，我现在正在干什么，我将来准备干什么，我都是如何干的，你应该如何干**
**（2）经验值：在干的过程中提升自己的思想，提升自己的技术，优化自己的产品，打造自己的团队，销售自己的产品，这才是真实的经验之谈；**
**（3）方法论：读过哪些书，遇到哪些人，有哪些不一样的经历和反思，提升了哪些不一样的技能；**
**（4）人生观：有哪些遗憾，如果回到过去，你会如何做，**
**（5）价值论：针对于后来人有哪些建议；**

这才是真实有价值的结果的经验，哪些没有经过人生实践的知识，有时候没有任何的价值，仅仅是消磨我们的时间；

# 2018年1月22日
**张家琛工作内容**
- 生成welcome页面  
```
rails g controller welcome
touch app/views/welcome/index.html.erb
```
- 修改根目录 `root 'welcome#index'`

# 2018年1月23日
**张家琛工作内容**
- 生成product(产品),product_list(产品列表),product_list_content(产品列表的列表内容)
- 实作product mvc crud
- 了解支付逻辑

> - 将rails数据库环境设置成开发环境`bin/rails db:environment:set RAILS_ENV=development`
> - 创建移植 只能用`rails g migration *****`然后`rake db:migrate`
```
migration的格式为
def change
  add_colloum :users, :is_vip, :boolean, default: false
              (表)    (表的字段)(字段的数据类型)(数据类型的默认值)
end
```
```
new页面
<div class="col-md-4 col-md-offset-4">
    <h2>新增</h2>
    <hr>
    <%= form_for @product do |f| %>
    标题
    <%= f.text_field :title %>
    <br>
    叙述
    <br>
    <%= f.text_area :description %>
    <br>
    <%= f.submit "Submit", :disable_with => 'Submitting...' %>
    <% end %>
</div>
```
```
index页面
<%= link_to("New product", new_product_path) %>
<table class="table table-hover">
<thead>
  <tr>
    <td>#</td>
    <td>Title</td>
    <td>Description</td>
  </tr>
</thead>
<tbody>
  <% @products.each do |product| %>
    <tr>
      <td>#</td>
      <td><%= link_to(product.title, product_path(product)) %></td>
      <td><%= product.description %></td>
      <td>
          <%= link_to("Edit", edit_product_path(product))%>
          <%= link_to("Delete", product_path(product), method: :delete )%>
      </td>
    </tr>
  <% end %>
</tbody>
</table>
```
```
show页面
<%= link_to("编辑", edit_product_path(@product)) %>
<%= link_to("删除", product_path(@product), method: :delete) %>
<h2><%= @product.title %></h2>
<p><%= @product.description %></p>
```
